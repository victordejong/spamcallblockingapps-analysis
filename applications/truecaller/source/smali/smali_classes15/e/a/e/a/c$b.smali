.class public final Le/a/e/a/c$b;
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
        "Le/a/j0/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/e/a/c;


# direct methods
.method public constructor <init>(Le/a/e/a/c;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/c$b;->b:Le/a/e/a/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v6, Le/a/j0/c;

    new-instance v1, Le/a/j0/e;

    iget-object v0, p0, Le/a/e/a/c$b;->b:Le/a/e/a/c;

    .line 2
    iget-object v0, v0, Le/a/e/a/c;->b:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {v1, v0}, Le/a/j0/e;-><init>(Landroid/content/ContentResolver;)V

    iget-object v0, p0, Le/a/e/a/c$b;->b:Le/a/e/a/c;

    .line 4
    iget-object v0, v0, Le/a/e/a/c;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 5
    iget-object v0, p0, Le/a/e/a/c$b;->b:Le/a/e/a/c;

    .line 6
    iget-object v0, v0, Le/a/e/a/c;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-object v0, v6

    .line 7
    invoke-direct/range {v0 .. v5}, Le/a/j0/c;-><init>(Le/a/j0/d;JJ)V

    return-object v6

    :cond_0
    const-string v0, "contentResolver"

    .line 8
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
