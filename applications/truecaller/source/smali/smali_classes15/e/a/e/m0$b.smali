.class public Le/a/e/m0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Le/a/e/m0$b;->e:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Le/a/e/m0$b;->f:I

    .line 4
    iput-object p1, p0, Le/a/e/m0$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Le/a/e/m0;
    .locals 3

    .line 1
    new-instance v0, Le/a/e/m0;

    iget-object v1, p0, Le/a/e/m0$b;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Le/a/e/m0;-><init>(Landroid/content/Context;Le/a/e/m0$b;Le/a/e/m0$a;)V

    return-object v0
.end method
