.class public final Le/a/a/j/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/p1/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/j/f;->e(Landroid/net/Uri;FJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/j/f;


# direct methods
.method public constructor <init>(Le/a/a/j/f;)V
    .locals 0

    iput-object p1, p0, Le/a/a/j/f$a;->a:Le/a/a/j/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Le/m/a/c/p1/l;
    .locals 2

    .line 1
    new-instance v0, Le/m/a/c/p1/h;

    iget-object v1, p0, Le/a/a/j/f$a;->a:Le/a/a/j/f;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Le/m/a/c/p1/h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
