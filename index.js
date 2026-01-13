require("./dart.js");

export default {
  async fetch(request) {
    const result = await new Promise((resolve, reject) => {
      exported("https://www.google.com", (result) => {
        resolve(result);
      });
    });

    return Response.json(result);
  },
};

