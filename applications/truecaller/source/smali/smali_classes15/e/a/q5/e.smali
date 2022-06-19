.class public final synthetic Le/a/q5/e;
.super Ls1/z/c/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le/a/q5/i;)V
    .locals 6

    const-class v2, Le/a/q5/i;

    const-string v3, "notificationsShownCount"

    const-string v4, "getNotificationsShownCount()I"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ls1/z/c/o;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/q5/i;

    .line 1
    invoke-interface {v0}, Le/a/q5/i;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/q5/i;

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Le/a/q5/i;->q(I)V

    return-void
.end method
