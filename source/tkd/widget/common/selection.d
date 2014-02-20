/**
 * Selection module.
 *
 * License:
 *     MIT. See LICENSE for full details.
 */
module tkd.widget.common.selection;

/**
 * These are common commands that apply to all widgets that have them injected.
 */
mixin template Selection()
{
	/**
	 * Clear the text selection.
	 */
	public void deselectText()
	{
		this._tk.eval("%s selection clear", this.id);
	}

	/**
	 * Check if any text selected.
	 */
	public bool isTextSelected()
	{
		this._tk.eval("%s selection present", this.id);
		return this._tk.getResult() == "1";
	}

	/**
	 * Select the text.
	 *
	 * Params:
	 *     startCharIndex = The index where the selection starts.
	 *     endCharIndex = The index where the selection ends.
	 */
	public void selectText(int startCharIndex = 0, int endCharIndex = int.max)
	{
		this._tk.eval("%s selection range %s %s", this.id, startCharIndex, endCharIndex);
	}
}