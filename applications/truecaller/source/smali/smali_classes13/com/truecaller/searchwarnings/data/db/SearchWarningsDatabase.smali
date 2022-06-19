.class public abstract Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase;
.super Ln3/c0/q;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008!\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase;",
        "Ln3/c0/q;",
        "Le/a/x4/j/d/b;",
        "a",
        "()Le/a/x4/j/d/b;",
        "<init>",
        "()V",
        "search-warnings_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final a:Ln3/c0/f0/a;

.field public static b:Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase$a;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase$a;-><init>(II)V

    sput-object v0, Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase;->a:Ln3/c0/f0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/c0/q;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Le/a/x4/j/d/b;
.end method
