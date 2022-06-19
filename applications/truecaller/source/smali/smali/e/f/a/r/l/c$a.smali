.class public Le/f/a/r/l/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/r/l/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/r/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/a/r/l/e<",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/f/a/n/a;Z)Le/f/a/r/l/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/a;",
            "Z)",
            "Le/f/a/r/l/d<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object p1, Le/f/a/r/l/c;->a:Le/f/a/r/l/c;

    return-object p1
.end method
