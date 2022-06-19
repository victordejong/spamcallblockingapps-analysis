.class public final Le/a/d0/u0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/u0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d0/u0;


# direct methods
.method public constructor <init>(Le/a/d0/u0;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/u0$a;->a:Le/a/d0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d0/u0$a;->a:Le/a/d0/u0;

    iget-object v0, v0, Le/a/d0/u0;->b:Ls1/z/b/a;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method
