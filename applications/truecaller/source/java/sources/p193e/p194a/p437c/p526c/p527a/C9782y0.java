package p193e.p194a.p437c.p526c.p527a;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.y0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/y0.class */
public final class C9782y0 extends AbstractC25649a {
    public C9782y0() {
        super(6, 7);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `analytics_events` (`feature` TEXT NOT NULL, `event_category` TEXT NOT NULL, `event_info` TEXT NOT NULL, `context` TEXT NOT NULL, `action_type` TEXT NOT NULL, `event_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, `consumed` INTEGER NOT NULL)");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `aggregate_analytics_events` (`feature` TEXT NOT NULL, `event_category` TEXT NOT NULL, `event_info` TEXT NOT NULL, `context` TEXT NOT NULL, `action_type` TEXT NOT NULL, `counts` INTEGER NOT NULL, `agg_event_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, `consumed` INTEGER NOT NULL)");
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `analytics_property_maps` (`parent_event_id` INTEGER NOT NULL, `key` TEXT NOT NULL, `value` TEXT NOT NULL, `property_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `created_at` INTEGER NOT NULL, FOREIGN KEY(`parent_event_id`) REFERENCES `analytics_events`(`event_id`) ON UPDATE NO ACTION ON DELETE NO ACTION )");
        abstractC26147b.mo2668S0("CREATE  INDEX `index_analytics_property_maps_parent_event_id_event_id` ON `analytics_property_maps` (`parent_event_id`)");
    }
}
