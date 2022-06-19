.class public final Le/a/a/c/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Lcom/truecaller/messaging/data/types/Message;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/g4$d;


# direct methods
.method public constructor <init>(Le/a/a/c/g4$d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/i4;->a:Le/a/a/c/g4$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    .line 2
    iget-object p1, p0, Le/a/a/c/i4;->a:Le/a/a/c/g4$d;

    iget-object p1, p1, Le/a/a/c/g4$d;->a:Le/a/a/c/g4;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Le/a/a/c/g4;->Kj(Z)V

    return-void
.end method
