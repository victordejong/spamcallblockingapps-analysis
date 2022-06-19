.class public Le/a/d0/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d0/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Le/a/d0/v;

.field public final synthetic b:Le/a/d0/f0;


# direct methods
.method public constructor <init>(Le/a/d0/f0;Le/a/d0/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/d0/f0$a;->b:Le/a/d0/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/d0/f0$a;->a:Le/a/d0/v;

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d0/f0$a;->b:Le/a/d0/f0;

    .line 2
    iget-object v0, v0, Le/a/d0/f0;->m:Le/a/r2/f;

    .line 3
    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o5/x;

    iget-object v1, p0, Le/a/d0/f0$a;->a:Le/a/d0/v;

    iget-object v1, v1, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    .line 4
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/o5/x;->h(Ljava/lang/String;)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/d0/f0$a;->b:Le/a/d0/f0;

    .line 5
    iget-object v1, v1, Le/a/d0/f0;->b:Le/a/r2/j;

    .line 6
    new-instance v2, Le/a/d0/f;

    invoke-direct {v2, p0}, Le/a/d0/f;-><init>(Le/a/d0/f0$a;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    return-void
.end method
