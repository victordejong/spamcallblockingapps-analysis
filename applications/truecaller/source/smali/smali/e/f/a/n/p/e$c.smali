.class public final Le/f/a/n/p/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/p/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/p/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/a/n/p/o<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/p/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/p/e$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/f/a/n/p/e$c$a;

    invoke-direct {v0, p0}, Le/f/a/n/p/e$c$a;-><init>(Le/f/a/n/p/e$c;)V

    iput-object v0, p0, Le/f/a/n/p/e$c;->a:Le/f/a/n/p/e$a;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c(Le/f/a/n/p/r;)Le/f/a/n/p/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/p/r;",
            ")",
            "Le/f/a/n/p/n<",
            "TModel;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Le/f/a/n/p/e;

    iget-object v0, p0, Le/f/a/n/p/e$c;->a:Le/f/a/n/p/e$a;

    invoke-direct {p1, v0}, Le/f/a/n/p/e;-><init>(Le/f/a/n/p/e$a;)V

    return-object p1
.end method
