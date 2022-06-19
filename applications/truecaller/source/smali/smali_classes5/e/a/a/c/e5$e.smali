.class public final Le/a/a/c/e5$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/e5;->onActivityResult(IILandroid/content/Intent;)V
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
.field public final synthetic a:Le/a/a/c/e5;


# direct methods
.method public constructor <init>(Le/a/a/c/e5;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/e5$e;->a:Le/a/a/c/e5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Le/a/a/c/e5$e;->a:Le/a/a/c/e5;

    invoke-static {v0, p1}, Le/a/a/c/e5;->ak(Le/a/a/c/e5;Ljava/lang/Boolean;)V

    return-void
.end method
