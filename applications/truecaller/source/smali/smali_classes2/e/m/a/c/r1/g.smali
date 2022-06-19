.class public final synthetic Le/m/a/c/r1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/r1/s$a;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/r1/s$a;IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/r1/g;->a:Le/m/a/c/r1/s$a;

    iput p2, p0, Le/m/a/c/r1/g;->b:I

    iput p3, p0, Le/m/a/c/r1/g;->c:I

    iput p4, p0, Le/m/a/c/r1/g;->d:I

    iput p5, p0, Le/m/a/c/r1/g;->e:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Le/m/a/c/r1/g;->a:Le/m/a/c/r1/s$a;

    iget v1, p0, Le/m/a/c/r1/g;->b:I

    iget v2, p0, Le/m/a/c/r1/g;->c:I

    iget v3, p0, Le/m/a/c/r1/g;->d:I

    iget v4, p0, Le/m/a/c/r1/g;->e:F

    .line 1
    iget-object v0, v0, Le/m/a/c/r1/s$a;->b:Le/m/a/c/r1/s;

    .line 2
    sget v5, Le/m/a/c/q1/d0;->a:I

    .line 3
    invoke-interface {v0, v1, v2, v3, v4}, Le/m/a/c/r1/s;->a(IIIF)V

    return-void
.end method
