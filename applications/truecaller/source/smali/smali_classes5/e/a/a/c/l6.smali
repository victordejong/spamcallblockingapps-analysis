.class public final Le/a/a/c/l6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:Landroid/graphics/drawable/Drawable;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "type"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "date"

    invoke-static {p5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/a/c/l6;->a:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Le/a/a/c/l6;->b:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Le/a/a/c/l6;->c:Ljava/lang/String;

    iput-object p5, p0, Le/a/a/c/l6;->d:Ljava/lang/String;

    return-void
.end method
