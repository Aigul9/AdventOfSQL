CREATE TABLE web_requests (
    request_id SERIAL PRIMARY KEY,
    url TEXT NOT NULL
);

INSERT INTO web_requests (url) VALUES
('http://example.com/page?param1=value1¶m2=value2'),
('https://shop.example.com/items?item=toy&color=red&size=small&ref=google&utm_source=advent-of-sql'),
('http://news.example.org/article?id=123&source=rss&author=jdoe&utm_source=advent-of-sql'),
('https://travel.example.net/booking?dest=paris&date=2024-12-19&class=business'),
('http://music.example.com/playlist?genre=pop&duration=long&listener=guest&utm_source=advent-of-sql');

select url, length(url) - length(replace(url, '&', '')) + 1 as length
from web_requests
where url like '%utm_source=advent-of-sql%'
order by 2 desc