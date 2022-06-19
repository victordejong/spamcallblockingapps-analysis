.class public Le/b/a/y/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Le/b/a/y/g;


# instance fields
.field public final a:Ln3/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/f<",
            "Ljava/lang/String;",
            "Le/b/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/b/a/y/g;

    invoke-direct {v0}, Le/b/a/y/g;-><init>()V

    sput-object v0, Le/b/a/y/g;->b:Le/b/a/y/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/g/f;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ln3/g/f;-><init>(I)V

    iput-object v0, p0, Le/b/a/y/g;->a:Ln3/g/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Le/b/a/e;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Le/b/a/y/g;->a:Ln3/g/f;

    invoke-virtual {v0, p1, p2}, Ln3/g/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
