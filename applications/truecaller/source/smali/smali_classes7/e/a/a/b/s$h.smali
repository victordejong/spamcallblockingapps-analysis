.class public final Le/a/a/b/s$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/s;->Ft([Lcom/truecaller/messaging/data/types/Conversation;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/b/s;


# direct methods
.method public constructor <init>(Le/a/a/b/s;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/s$h;->a:Le/a/a/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object p1, p0, Le/a/a/b/s$h;->a:Le/a/a/b/s;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/b/r;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/a/a/b/r;->D0()V

    :cond_0
    return-void
.end method
