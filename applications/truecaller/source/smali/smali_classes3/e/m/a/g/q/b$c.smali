.class public Le/m/a/g/q/b$c;
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
    iput-object p1, p0, Le/m/a/g/q/b$c;->a:Le/m/a/g/q/b;

    invoke-direct {p0}, Ln3/h0/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/m/a/g/q/b$c;->a:Le/m/a/g/q/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Le/m/a/g/q/b;->setIndeterminate(Z)V

    .line 2
    iget-object p1, p0, Le/m/a/g/q/b$c;->a:Le/m/a/g/q/b;

    invoke-virtual {p1, v0, v0}, Le/m/a/g/q/b;->b(IZ)V

    .line 3
    iget-object p1, p0, Le/m/a/g/q/b$c;->a:Le/m/a/g/q/b;

    .line 4
    iget v0, p1, Le/m/a/g/q/b;->b:I

    .line 5
    iget-boolean v1, p1, Le/m/a/g/q/b;->c:Z

    .line 6
    invoke-virtual {p1, v0, v1}, Le/m/a/g/q/b;->b(IZ)V

    return-void
.end method
