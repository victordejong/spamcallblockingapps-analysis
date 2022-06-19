.class public Le/f/a/n/p/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/p/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/t/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/t/g<",
            "Le/f/a/n/p/m$b<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/f/a/n/p/m$a;

    invoke-direct {v0, p0, p1, p2}, Le/f/a/n/p/m$a;-><init>(Le/f/a/n/p/m;J)V

    iput-object v0, p0, Le/f/a/n/p/m;->a:Le/f/a/t/g;

    return-void
.end method
