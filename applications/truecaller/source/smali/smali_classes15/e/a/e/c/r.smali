.class public final synthetic Le/a/e/c/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/c0/e;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/e/c/r;->a:I

    return-void
.end method


# virtual methods
.method public final a(Le/b/a/c0/b;)Ljava/lang/Object;
    .locals 2

    iget p1, p0, Le/a/e/c/r;->a:I

    .line 1
    sget-object v0, Le/a/e/c/s1;->W1:Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method
