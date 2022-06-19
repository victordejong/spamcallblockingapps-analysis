.class public final Le/a/a/h1/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h1/b;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h1/b;


# direct methods
.method public constructor <init>(Le/a/a/h1/b;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h1/b$a;->a:Le/a/a/h1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h1/b$a;->a:Le/a/a/h1/b;

    iget-object v0, v0, Le/a/a/h1/b;->a:Lcom/truecaller/messaging/urgent/KeyguardOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
