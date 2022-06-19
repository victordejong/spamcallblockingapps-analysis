.class public Le/a/h0/y/f$a;
.super Le/a/o5/p1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h0/y/f;->setupDialog(Landroid/app/Dialog;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h0/y/f;


# direct methods
.method public constructor <init>(Le/a/h0/y/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/h0/y/f$a;->a:Le/a/h0/y/f;

    invoke-direct {p0}, Le/a/o5/p1;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/h0/y/f$a;->a:Le/a/h0/y/f;

    iget-object p1, p1, Le/a/h0/y/f;->a:Le/a/h0/y/g;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Le/a/h0/y/g;->Jj()V

    :cond_0
    return-void
.end method
