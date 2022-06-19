.class public Le/m/d/b0/r/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/d/b0/r/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Le/m/d/b0/r/k;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILe/m/d/b0/r/k;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Le/m/d/b0/r/l$a;->a:I

    .line 3
    iput-object p3, p0, Le/m/d/b0/r/l$a;->b:Le/m/d/b0/r/k;

    .line 4
    iput-object p4, p0, Le/m/d/b0/r/l$a;->c:Ljava/lang/String;

    return-void
.end method
