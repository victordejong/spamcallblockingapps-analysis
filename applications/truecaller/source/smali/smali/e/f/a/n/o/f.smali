.class public Le/f/a/n/o/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/o/c0/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/a/n/o/c0/a$b;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/d<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field public final c:Le/f/a/n/i;


# direct methods
.method public constructor <init>(Le/f/a/n/d;Ljava/lang/Object;Le/f/a/n/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/d<",
            "TDataType;>;TDataType;",
            "Le/f/a/n/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/o/f;->a:Le/f/a/n/d;

    .line 3
    iput-object p2, p0, Le/f/a/n/o/f;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Le/f/a/n/o/f;->c:Le/f/a/n/i;

    return-void
.end method
