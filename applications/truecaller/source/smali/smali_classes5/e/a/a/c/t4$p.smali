.class public final Le/a/a/c/t4$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/t4;->n2(Lcom/truecaller/messaging/data/types/Message;)V
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
        "Lcom/truecaller/messaging/data/types/Draft;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/t4;


# direct methods
.method public constructor <init>(Le/a/a/c/t4;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/t4$p;->a:Le/a/a/c/t4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/truecaller/messaging/data/types/Draft;

    .line 2
    iget-object p1, p0, Le/a/a/c/t4$p;->a:Le/a/a/c/t4;

    .line 3
    iget-object p1, p1, Le/a/a/c/t4;->D:Lo3/a;

    .line 4
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/c/s4$a;

    invoke-interface {p1}, Le/a/a/c/s4$a;->D2()V

    return-void
.end method
