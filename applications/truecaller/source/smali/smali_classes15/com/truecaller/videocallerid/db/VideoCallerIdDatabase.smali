.class public abstract Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008!\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;",
        "Ln3/c0/q;",
        "Le/a/k/n/e/e;",
        "a",
        "()Le/a/k/n/e/e;",
        "Le/a/k/n/g/c;",
        "c",
        "()Le/a/k/n/g/c;",
        "Le/a/k/n/f/b;",
        "b",
        "()Le/a/k/n/f/b;",
        "Le/a/k/n/d/a;",
        "d",
        "()Le/a/k/n/d/a;",
        "<init>",
        "()V",
        "video-caller-id_release"
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


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase$a;

    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase$a;-><init>(II)V

    sput-object v0, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;->a:Ln3/c0/f0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/c0/q;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Le/a/k/n/e/e;
.end method

.method public abstract b()Le/a/k/n/f/b;
.end method

.method public abstract c()Le/a/k/n/g/c;
.end method

.method public abstract d()Le/a/k/n/d/a;
.end method
