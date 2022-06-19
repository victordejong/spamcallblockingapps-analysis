.class public Le/f/a/n/p/w$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/p/o;
.implements Le/f/a/n/p/w$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/p/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/p/o<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;",
        "Le/f/a/n/p/w$c<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/p/w$d;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Le/f/a/n/n/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Le/f/a/n/n/d<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/f/a/n/n/n;

    iget-object v1, p0, Le/f/a/n/p/w$d;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p1}, Le/f/a/n/n/n;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Le/f/a/n/p/r;)Le/f/a/n/p/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/p/r;",
            ")",
            "Le/f/a/n/p/n<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Le/f/a/n/p/w;

    invoke-direct {p1, p0}, Le/f/a/n/p/w;-><init>(Le/f/a/n/p/w$c;)V

    return-object p1
.end method
