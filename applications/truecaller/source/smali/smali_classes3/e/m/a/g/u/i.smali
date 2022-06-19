.class public final Le/m/a/g/u/i;
.super Le/m/a/g/u/f;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/g/u/f;

.field public final b:F


# direct methods
.method public constructor <init>(Le/m/a/g/u/f;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/g/u/f;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/g/u/i;->a:Le/m/a/g/u/f;

    .line 3
    iput p2, p0, Le/m/a/g/u/i;->b:F

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/u/i;->a:Le/m/a/g/u/f;

    invoke-virtual {v0}, Le/m/a/g/u/f;->a()Z

    move-result v0

    return v0
.end method

.method public b(FFFLe/m/a/g/u/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/u/i;->a:Le/m/a/g/u/f;

    iget v1, p0, Le/m/a/g/u/i;->b:F

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Le/m/a/g/u/f;->b(FFFLe/m/a/g/u/o;)V

    return-void
.end method
