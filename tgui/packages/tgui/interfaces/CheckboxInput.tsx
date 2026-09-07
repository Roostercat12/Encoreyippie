import { useState } from 'react';
import { Button, Section, Stack } from 'tgui-core/components';

import { useBackend } from '../backend';
import { Window } from '../layouts';
import { InputButtons } from './_common/InputButtons';
import { Loader } from './_common/Loader';

type Data = {
  items: string[];
  message: string;
  title: string;
  timeout: number;
  min_checked: number;
  max_checked: number;
};

export function CheckboxInput() {
  const { data } = useBackend<Data>();
  const {
    items = [],
    message,
    title,
    timeout,
    min_checked = 0,
    max_checked = 50,
  } = data;

  const [selections, setSelections] = useState<string[]>([]);

  const toggle = (name: string) => {
    if (selections.includes(name)) {
      setSelections(selections.filter((item) => item !== name));
      return;
    }
    if (selections.length >= max_checked) {
      return;
    }
    setSelections([...selections, name]);
  };

  return (
    <Window title={title} width={400} height={350}>
      {!!timeout && <Loader value={timeout} />}
      <Window.Content>
        <Stack fill vertical>
          <Stack.Item>
            <Section>
              {message} (min {min_checked}, max {max_checked})
            </Section>
          </Stack.Item>
          <Stack.Item grow>
            <Section fill scrollable>
              {items.map((item) => (
                <Button.Checkbox
                  key={item}
                  checked={selections.includes(item)}
                  disabled={
                    selections.length >= max_checked &&
                    !selections.includes(item)
                  }
                  fluid
                  onClick={() => toggle(item)}
                >
                  {item}
                </Button.Checkbox>
              ))}
            </Section>
          </Stack.Item>
          <Stack.Item>
            <InputButtons
              input={selections}
              disabled={selections.length < min_checked}
            />
          </Stack.Item>
        </Stack>
      </Window.Content>
    </Window>
  );
}
