.class public Le/m/a/g/q/b$d;
.super Ln3/h0/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/q/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/q/b;


# direct methods
.method public constructor <init>(Le/m/a/g/q/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/q/b$d;->a:Le/m/a/g/q/b;

    invoke-direct {p0}, Ln3/h0/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/m/a/g/q/b$d;->a:Le/m/a/g/q/b;

    .line 2
    iget-boolean v0, p1, Le/m/a/g/q/b;->g:Z

    if-nez v0, :cond_0

    .line 3
    iget v0, p1, Le/m/a/g/q/b;->h:I

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
