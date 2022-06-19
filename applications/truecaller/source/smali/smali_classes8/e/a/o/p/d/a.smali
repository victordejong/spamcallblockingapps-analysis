.class public final Le/a/o/p/d/a;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x6

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 3

    const-string v0, "database"

    const-string v1, "DROP TABLE predefined_call_reason"

    const-string v2, "CREATE TABLE IF NOT EXISTS `predefined_call_reason`(`_id` INTEGER NOT Null, `index` INTEGER NOT NUll,`message` TEXT NOT NUll, `type` INTEGER NOT NUll, PRIMARY KEY (`_id`, `type`))"

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->u0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
