.class public final Le/a/e/a/c$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/j0/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/e/a/c;


# direct methods
.method public constructor <init>(Le/a/e/a/c;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/c$c;->b:Le/a/e/a/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance v8, Le/a/j0/k;

    iget-object v0, p0, Le/a/e/a/c$c;->b:Le/a/e/a/c;

    .line 2
    iget-object v1, v0, Le/a/e/a/c;->b:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    iget-object v0, v0, Le/a/e/a/c;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 4
    iget-object v0, p0, Le/a/e/a/c$c;->b:Le/a/e/a/c;

    .line 5
    iget-object v0, v0, Le/a/e/a/c;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 6
    iget-object v0, p0, Le/a/e/a/c$c;->b:Le/a/e/a/c;

    .line 7
    iget-object v7, v0, Le/a/e/a/c;->c:Le/a/a/g/x;

    if-eqz v7, :cond_1

    .line 8
    iget-object v9, v0, Le/a/e/a/c;->a:Le/a/a/i0;

    if-eqz v9, :cond_0

    move-object v0, v8

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v7

    move-object v7, v9

    .line 9
    invoke-direct/range {v0 .. v7}, Le/a/j0/k;-><init>(Landroid/content/ContentResolver;JJLe/a/a/g/x;Le/a/a/i0;)V

    return-object v8

    :cond_0
    const-string v0, "messageSettings"

    .line 10
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "selectionProvider"

    .line 11
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v0, "contentResolver"

    .line 12
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
