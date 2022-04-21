
This recreates an issue I was seeing with form helpers. I had something else in the component that was
triggering a re-render on a timer. When that happened it would delete the values inside of any form fields that aren't controlled by the component state (by using `value={@form_value}` and `phx-change` on the form.

I'm not sure if this is a bug or working as intended.
