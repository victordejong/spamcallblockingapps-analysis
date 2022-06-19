.class public final Le/a/a/c/n/w$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/n/w;->Jj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ljava/util/Map<",
        "Lcom/truecaller/messaging/data/types/Reaction;",
        "+",
        "Lcom/truecaller/data/entity/messaging/Participant;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/n/w;


# direct methods
.method public constructor <init>(Le/a/a/c/n/w;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/n/w$c;->a:Le/a/a/c/n/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Le/a/a/c/n/w$c;->a:Le/a/a/c/n/w;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/n/v;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Le/a/a/c/n/v;->qc(Ljava/util/Map;)V

    .line 4
    :cond_0
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/n/v;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    invoke-interface {v0, p1}, Le/a/a/c/n/v;->Je(Z)V

    :cond_1
    return-void
.end method
