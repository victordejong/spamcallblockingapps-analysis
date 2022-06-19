.class final Lf/j/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/j/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/j/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/j/b/b$a<",
        "Lf/h/l/c0/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    check-cast p1, Lf/h/l/c0/c;

    invoke-virtual {p0, p1, p2}, Lf/j/b/a$a;->b(Lf/h/l/c0/c;Landroid/graphics/Rect;)V

    return-void
.end method

.method public b(Lf/h/l/c0/c;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lf/h/l/c0/c;->l(Landroid/graphics/Rect;)V

    return-void
.end method
