.class public Lx3/s$b$a;
.super Lv3/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx3/s$b;-><init>(Lu3/l0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lx3/s$b;


# direct methods
.method public constructor <init>(Lx3/s$b;Lv3/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx3/s$b$a;->b:Lx3/s$b;

    invoke-direct {p0, p2}, Lv3/l;-><init>(Lv3/b0;)V

    return-void
.end method


# virtual methods
.method public d2(Lv3/f;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lv3/l;->d2(Lv3/f;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lx3/s$b$a;->b:Lx3/s$b;

    iput-object p1, p2, Lx3/s$b;->e:Ljava/io/IOException;

    .line 3
    throw p1
.end method
