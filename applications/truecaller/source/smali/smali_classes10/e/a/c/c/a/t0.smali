.class public final Le/a/c/c/a/t0;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const/16 v1, 0x34

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS aggregate_analytics_events (\nfeature TEXT NOT NULL, \nevent_category TEXT NOT NULL, \nevent_info TEXT NOT NULL, \ncontext TEXT NOT NULL, \naction_type TEXT NOT NULL, \naction_info TEXT NOT NULL DEFAULT \'\',\nevent_date INTEGER NOT NULL DEFAULT 0, \ncounts INTEGER NOT NULL, \nagg_event_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \ncreated_at INTEGER NOT NULL, \nconsumed INTEGER NOT NULL\n)"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method
