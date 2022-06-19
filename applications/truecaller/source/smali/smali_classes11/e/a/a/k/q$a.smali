.class public Le/a/a/k/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/truecaller/messaging/data/types/TransportInfo;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/a/a/k/q$a;->a:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/a/a/k/q$a;->b:Lcom/truecaller/messaging/data/types/TransportInfo;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/messaging/data/types/TransportInfo;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Le/a/a/k/q$a;->a:I

    .line 6
    iput-object p1, p0, Le/a/a/k/q$a;->b:Lcom/truecaller/messaging/data/types/TransportInfo;

    return-void
.end method
