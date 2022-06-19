.class public final Le/f/a/n/o/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/o/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/o/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/a/n/o/j$a<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/a;

.field public final synthetic b:Le/f/a/n/o/i;


# direct methods
.method public constructor <init>(Le/f/a/n/o/i;Le/f/a/n/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/a/n/o/i$b;->b:Le/f/a/n/o/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/f/a/n/o/i$b;->a:Le/f/a/n/a;

    return-void
.end method
