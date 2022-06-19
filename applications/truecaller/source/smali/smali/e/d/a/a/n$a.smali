.class public Le/d/a/a/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/d/a/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/a/a/n;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/d/a/a/k;


# direct methods
.method public constructor <init>(Le/d/a/a/k;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/d/a/a/k;",
            "Ljava/util/List<",
            "Le/d/a/a/n;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/d/a/a/n$a;->a:Ljava/util/List;

    iput-object p1, p0, Le/d/a/a/n$a;->b:Le/d/a/a/k;

    return-void
.end method
