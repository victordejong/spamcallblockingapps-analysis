.class public Le/f/a/n/o/l$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/o/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Le/f/a/n/o/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/o/m<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Le/f/a/r/i;

.field public final synthetic c:Le/f/a/n/o/l;


# direct methods
.method public constructor <init>(Le/f/a/n/o/l;Le/f/a/r/i;Le/f/a/n/o/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/r/i;",
            "Le/f/a/n/o/m<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/f/a/n/o/l$d;->c:Le/f/a/n/o/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/f/a/n/o/l$d;->b:Le/f/a/r/i;

    .line 3
    iput-object p3, p0, Le/f/a/n/o/l$d;->a:Le/f/a/n/o/m;

    return-void
.end method
