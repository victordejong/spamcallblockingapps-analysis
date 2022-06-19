.class public final Le/a/l/h0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/l/e0;


# direct methods
.method public constructor <init>(Le/a/l/e0;)V
    .locals 0

    iput-object p1, p0, Le/a/l/h0;->b:Le/a/l/e0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/l/h0;->b:Le/a/l/e0;

    .line 2
    iget-object v0, v0, Le/a/l/e0;->L:Le/a/l/o2/c;

    .line 3
    iget-object v0, v0, Le/a/l/o2/c;->b:Le/a/z4/d;

    const/4 v1, 0x0

    const-string v2, "showLostPremiumConsumableNotification"

    invoke-interface {v0, v2, v1}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
