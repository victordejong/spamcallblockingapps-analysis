.class public Le/a/y/a/g/f/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/a/g/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FFFF)V
    .locals 1

    const-string v0, "displayableUnicode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/a/g/f/e$a;->a:Ljava/lang/String;

    iput p2, p0, Le/a/y/a/g/f/e$a;->b:F

    iput p3, p0, Le/a/y/a/g/f/e$a;->c:F

    iput p4, p0, Le/a/y/a/g/f/e$a;->d:F

    iput p5, p0, Le/a/y/a/g/f/e$a;->e:F

    return-void
.end method
