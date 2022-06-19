.class public final Le/a/b0/a/y/c;
.super Le/a/b0/a/y/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b0/a/y/c$a;
    }
.end annotation


# instance fields
.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/String;

.field public final h:Ljava/lang/CharSequence;

.field public final i:I

.field public final j:Landroid/graphics/Paint$FontMetricsInt;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontMetrics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/a/b0/a/y/d;-><init>(Ljava/lang/CharSequence;ILandroid/graphics/Paint$FontMetricsInt;)V

    iput-object p1, p0, Le/a/b0/a/y/c;->h:Ljava/lang/CharSequence;

    iput p2, p0, Le/a/b0/a/y/c;->i:I

    iput-object p3, p0, Le/a/b0/a/y/c;->j:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method
