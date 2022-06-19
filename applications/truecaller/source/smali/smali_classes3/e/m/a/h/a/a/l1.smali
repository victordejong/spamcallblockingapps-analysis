.class public final Le/m/a/h/a/a/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public d:I

.field public final e:J

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/a/h/a/a/n1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JIJLjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JIJ",
            "Ljava/util/List<",
            "Le/m/a/h/a/a/n1;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    iput-wide p2, p0, Le/m/a/h/a/a/l1;->b:J

    iput p4, p0, Le/m/a/h/a/a/l1;->d:I

    iput-wide p5, p0, Le/m/a/h/a/a/l1;->e:J

    iput-object p7, p0, Le/m/a/h/a/a/l1;->f:Ljava/util/List;

    iput-object p8, p0, Le/m/a/h/a/a/l1;->c:Ljava/lang/String;

    return-void
.end method
