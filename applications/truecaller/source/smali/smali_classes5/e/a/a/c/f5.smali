.class public final Le/a/a/c/f5;
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
        "Lcom/truecaller/messaging/data/types/Draft;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/e5;


# direct methods
.method public constructor <init>(Le/a/a/c/e5;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/f5;->a:Le/a/a/c/e5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/messaging/data/types/Draft;

    .line 2
    iget-object v0, p0, Le/a/a/c/f5;->a:Le/a/a/c/e5;

    invoke-virtual {v0, p1}, Le/a/a/c/e5;->jk(Lcom/truecaller/messaging/data/types/Draft;)V

    return-void
.end method
