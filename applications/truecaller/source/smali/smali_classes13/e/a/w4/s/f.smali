.class public final synthetic Le/a/w4/s/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/w4/s/c0;


# direct methods
.method public synthetic constructor <init>(Le/a/w4/s/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w4/s/f;->a:Le/a/w4/s/c0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Le/a/w4/s/f;->a:Le/a/w4/s/c0;

    .line 1
    iget-object p1, p1, Le/a/w4/s/c0;->n:Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l0/c;

    const/4 p2, 0x5

    invoke-interface {p1, p2}, Le/a/l0/c;->d(I)V

    .line 2
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object p1

    .line 3
    new-instance p2, Le/a/q2/g$b$a;

    const/4 v0, 0x0

    const-string v1, "SEARCHVIEW_ClearedRecentSearches"

    invoke-direct {p2, v1, v0, v0, v0}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 4
    invoke-interface {p1, p2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method
