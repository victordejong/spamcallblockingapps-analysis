.class public Le/a/a/k/w$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/w$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroid/net/Uri;

.field public final c:Landroid/content/ContentValues;

.field public d:Ljava/lang/String;

.field public e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Le/a/a/k/w$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    iput-object p3, p0, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    .line 3
    iput p1, p0, Le/a/a/k/w$b$a;->a:I

    .line 4
    iput-object p2, p0, Le/a/a/k/w$b$a;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()Le/a/a/k/w$b;
    .locals 2

    .line 1
    new-instance v0, Le/a/a/k/w$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/a/k/w$b;-><init>(Le/a/a/k/w$b$a;Le/a/a/k/w$a;)V

    return-object v0
.end method
