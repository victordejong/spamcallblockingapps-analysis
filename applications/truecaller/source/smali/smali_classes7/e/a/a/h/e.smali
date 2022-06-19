.class public final Le/a/a/h/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/h/c;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/a/g/g;

.field public final c:Le/a/p5/h0;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/p5/h0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorsFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/h/e;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/a/h/e;->b:Le/a/a/g/g;

    iput-object p3, p0, Le/a/a/h/e;->c:Le/a/p5/h0;

    return-void
.end method
