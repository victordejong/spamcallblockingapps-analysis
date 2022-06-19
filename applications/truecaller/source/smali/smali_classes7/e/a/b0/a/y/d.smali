.class public Le/a/b0/a/y/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/lang/CharSequence;

.field public final d:I

.field public final e:Landroid/graphics/Paint$FontMetricsInt;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontMetrics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/a/y/d;->c:Ljava/lang/CharSequence;

    iput p2, p0, Le/a/b0/a/y/d;->d:I

    iput-object p3, p0, Le/a/b0/a/y/d;->e:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method
