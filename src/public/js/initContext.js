const menuItems = [
  {
    content: `Item 1`,
    events: {
      click: (e) => console.log(e, "Copy Button Click"),
      // You can use any event listener from here
    },
  },
  { content: `Item 2` },
  { content: `Item 3` },
  { content: `Item 4` },
  {
    content: `Item 5`,
    divider: "top", // top, bottom, top-bottom
  },
];

const myMenu = new ContextMenu({
  target: ".target-light",
  mode: "light",
  menuItems,
});

myMenu.init();
