.class public final Le/a/n2/b/a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n2/b/a;-><init>(Le/a/b0/e/l;Le/a/e4/p;Le/a/u3/g;Le/a/z4/d;Le/a/b0/q/l0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/n2/b/a;


# direct methods
.method public constructor <init>(Le/a/n2/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/n2/b/a$a;->b:Le/a/n2/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/n2/b/a$a;->b:Le/a/n2/b/a;

    .line 3
    iget-object v1, v1, Le/a/n2/b/a;->d:Le/a/u3/g;

    .line 4
    iget-object v2, v1, Le/a/u3/g;->y3:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0xea

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    check-cast v1, Le/a/u3/i;

    .line 5
    invoke-interface {v1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;

    invoke-virtual {v0, v1, v2}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    :goto_0
    instance-of v1, v0, Ls1/l$a;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 8
    :cond_0
    check-cast v0, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;-><init>(ZJIILs1/z/c/f;)V

    :goto_1
    return-object v0
.end method
