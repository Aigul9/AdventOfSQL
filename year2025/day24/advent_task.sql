DROP TABLE IF EXISTS incoming_dispatches;
DROP TABLE IF EXISTS system_dispatches;

CREATE TABLE system_dispatches (
    id SERIAL PRIMARY KEY,
    system_id TEXT NOT NULL,
    dispatched_at TIMESTAMP NOT NULL,
    payload JSONB NOT NULL,
    marker_letter TEXT GENERATED ALWAYS AS (payload ->> 'marker') STORED,
    UNIQUE (system_id, dispatched_at, payload)
);

CREATE TABLE incoming_dispatches (
    system_id TEXT,
    dispatched_at TIMESTAMP,
    payload JSONB
);

INSERT INTO system_dispatches (system_id, dispatched_at, payload) VALUES
('SYS-0081', '2025-12-21T06:02:26', '{"marker": "T", "source": "secondary"}'::jsonb),
('SYS-0137', '2025-12-19T06:03:21', '{"marker": "D", "source": "secondary"}'::jsonb),
('SYS-0237', '2025-12-19T06:23:37', '{"marker": "D", "source": "secondary"}'::jsonb),
('SYS-0006', '2025-12-24T18:10:16', '{"marker": "K", "source": "secondary"}'::jsonb),
('SYS-0170', '2025-12-19T06:17:24', '{"marker": "I", "source": "secondary"}'::jsonb),
('SYS-0224', '2025-12-19T06:23:24', '{"marker": "S", "source": "secondary"}'::jsonb),
('SYS-0007', '2025-12-24T18:10:06', '{"marker": "O", "source": "secondary"}'::jsonb),
('SYS-0035', '2025-12-23T15:55:34', '{"marker": "C", "source": "secondary"}'::jsonb),
('SYS-0010', '2025-12-23T15:55:09', '{"marker": "L", "source": "secondary"}'::jsonb),
('SYS-0037', '2025-12-23T15:55:36', '{"marker": "D", "source": "secondary"}'::jsonb),
('SYS-0001', '2025-12-24T08:02:00', '{"marker": "X", "source": "primary"}'::jsonb),
('SYS-0225', '2025-12-19T06:23:25', '{"marker": "Q", "source": "secondary"}'::jsonb),
('SYS-0095', '2025-12-21T06:02:40', '{"marker": "D", "source": "secondary"}'::jsonb),
('SYS-0021', '2025-12-23T15:55:20', '{"marker": "W", "source": "secondary"}'::jsonb),
('SYS-0001', '2025-12-24T08:10:00', '{"marker": "A", "source": "primary"}'::jsonb),
('SYS-0009', '2025-12-24T08:02:08', '{"marker": "U", "source": "primary"}'::jsonb),
('SYS-0119', '2025-12-19T06:03:03', '{"marker": "E", "source": "secondary"}'::jsonb),
('SYS-0142', '2025-12-19T06:03:26', '{"marker": "O", "source": "secondary"}'::jsonb),
('SYS-0048', '2025-12-23T15:55:30', '{"marker": "I", "source": "secondary"}'::jsonb),
('SYS-0228', '2025-12-19T06:23:28', '{"marker": "G", "source": "secondary"}'::jsonb),
('SYS-0092', '2025-12-21T06:02:37', '{"marker": "K", "source": "secondary"}'::jsonb),
('SYS-0008', '2025-12-24T08:02:07', '{"marker": "B", "source": "primary"}'::jsonb);

INSERT INTO incoming_dispatches (system_id, dispatched_at, payload) VALUES
('SYS-0013', '2025-12-23T15:55:12', '{"marker": "F", "source": "secondary"}'::jsonb),
('SYS-0002', '2025-12-24T08:10:01', '{"marker": "D", "source": "primary"}'::jsonb),
('SYS-0012', '2025-12-23T15:55:11', '{"marker": "O", "source": "secondary"}'::jsonb),
('SYS-0108', '2025-12-19T06:02:52', '{"marker": "G", "source": "secondary"}'::jsonb),
('SYS-0165', '2025-12-19T06:17:19', '{"marker": "Q", "source": "secondary"}'::jsonb),
('SYS-0189', '2025-12-19T06:17:40', '{"marker": "H", "source": "secondary"}'::jsonb),
('SYS-0050', '2025-12-23T15:55:32', '{"marker": "K", "source": "secondary"}'::jsonb),
('SYS-0138', '2025-12-19T06:03:22', '{"marker": "V", "source": "secondary"}'::jsonb),
('SYS-0087', '2025-12-21T06:02:32', '{"marker": "A", "source": "secondary"}'::jsonb),
('SYS-0208', '2025-12-19T06:23:08', '{"marker": "G", "source": "secondary"}'::jsonb),
('SYS-0057', '2025-12-23T15:55:56', '{"marker": "D", "source": "secondary"}'::jsonb),
('SYS-0002', '2025-12-24T18:10:12', '{"marker": "G", "source": "secondary"}'::jsonb),
('SYS-0011', '2025-12-24T08:10:10', '{"marker": "L", "source": "primary"}'::jsonb),
('SYS-0226', '2025-12-19T06:23:26', '{"marker": "L", "source": "secondary"}'::jsonb),
('SYS-0206', '2025-12-19T06:23:06', '{"marker": "L", "source": "secondary"}'::jsonb),
('SYS-0118', '2025-12-19T06:03:02', '{"marker": "V", "source": "secondary"}'::jsonb),
('SYS-0185', '2025-12-19T06:17:36', '{"marker": "Q", "source": "secondary"}'::jsonb),
('SYS-0218', '2025-12-19T06:23:18', '{"marker": "V", "source": "secondary"}'::jsonb),
('SYS-0018', '2025-12-23T15:55:17', '{"marker": "G", "source": "secondary"}'::jsonb),
('SYS-0005', '2025-12-24T18:10:04', '{"marker": "N", "source": "secondary"}'::jsonb),
('SYS-0093', '2025-12-21T06:02:38', '{"marker": "C", "source": "secondary"}'::jsonb),
('SYS-0011', '2025-12-24T18:10:10', '{"marker": "L", "source": "secondary"}'::jsonb),
('SYS-0011', '2025-12-23T15:55:10', '{"marker": "L", "source": "secondary"}'::jsonb),
('SYS-0143', '2025-12-19T06:03:27', '{"marker": "F", "source": "secondary"}'::jsonb),
('SYS-0152', '2025-12-19T06:17:06', '{"marker": "K", "source": "secondary"}'::jsonb),
('SYS-0015', '2025-12-23T15:55:14', '{"marker": "Q", "source": "secondary"}'::jsonb),
('SYS-0001', '2025-12-23T06:02:00', '{"marker": "X", "source": "primary"}'::jsonb),
('SYS-0209', '2025-12-19T06:23:09', '{"marker": "H", "source": "secondary"}'::jsonb),
('SYS-0133', '2025-12-19T06:03:17', '{"marker": "C", "source": "secondary"}'::jsonb),
('SYS-0158', '2025-12-19T06:17:12', '{"marker": "V", "source": "secondary"}'::jsonb),
('SYS-0195', '2025-12-19T06:17:46', '{"marker": "D", "source": "secondary"}'::jsonb),
('SYS-0182', '2025-12-19T06:17:33', '{"marker": "O", "source": "secondary"}'::jsonb),
('SYS-0033', '2025-12-23T15:55:32', '{"marker": "W", "source": "secondary"}'::jsonb),
('SYS-0083', '2025-12-21T06:02:28', '{"marker": "F", "source": "secondary"}'::jsonb),
('SYS-0002', '2025-12-23T06:02:01', '{"marker": "Y", "source": "primary"}'::jsonb),
('SYS-0076', '2025-12-23T06:02:22', '{"marker": "A", "source": "secondary"}'::jsonb),
('SYS-0009', '2025-12-24T08:02:08', '{"marker": "U", "source": "primary"}'::jsonb),
('SYS-0194', '2025-12-19T06:17:45', '{"marker": "U", "source": "secondary"}'::jsonb);