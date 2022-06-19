.class public final Le/a/c/c/a/r;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x19

    const/16 v1, 0x1a

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DROP INDEX IF EXISTS `index_action_state_message_id`"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "\n            CREATE UNIQUE INDEX IF NOT EXISTS `index_action_state_message_id_origin` \n            ON `action_state` (`message_id`, `origin`)\n            "

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "\n            REPLACE INTO action_state (message_id, domain, state, \n            created_at, last_updated_at, origin, extra)\n            SELECT coalesce(act.message_id,pt.id), coalesce(act.domain,pt.type), 2, coalesce(act.created_at,pt.created_at),\n            coalesce(act.last_updated_at,pt.last_updated_at) , coalesce(act.origin,\'BBPS\'), strftime(\"%s\", \"now\", \"+1 day\") * 1000\n            from pay_transactions_table as pt LEFT JOIN action_state as act on pt.id = act.message_id\n            WHERE status == \'success\' and type = \'Bill\'\n        "

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method
