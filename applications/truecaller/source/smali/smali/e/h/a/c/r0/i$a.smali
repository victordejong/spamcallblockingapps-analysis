.class public Le/h/a/c/r0/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/r0/i;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/r0/i;


# direct methods
.method public constructor <init>(Le/h/a/c/r0/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/r0/i$a;->a:Le/h/a/c/r0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/r0/i$a;->a:Le/h/a/c/r0/i;

    iget-object v0, v0, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    invoke-virtual {v0}, Le/h/a/c/k0/a;->f()V

    return-void
.end method
