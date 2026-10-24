from http.server import SimpleHTTPRequestHandler, HTTPServer

class Sunucu(SimpleHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html; charset=utf-8")
        self.end_headers()
        self.wfile.write(b"<h1>Kendi Urettigim Ilk Docker Imajina Hosgeldiniz!</h1>")

HTTPServer(("", 8090), Sunucu).serve_forever()