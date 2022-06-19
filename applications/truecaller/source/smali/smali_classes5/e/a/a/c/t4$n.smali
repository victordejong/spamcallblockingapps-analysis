.class public final Le/a/a/c/t4$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/t4;->Q0(Lcom/truecaller/messaging/data/types/Message;)V
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
.field public final synthetic a:Le/a/a/c/t4;


# direct methods
.method public constructor <init>(Le/a/a/c/t4;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/t4$n;->a:Le/a/a/c/t4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/c/t4$n;->a:Le/a/a/c/t4;

    .line 3
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/z4;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Le/a/a/c/z4;->Vc(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
