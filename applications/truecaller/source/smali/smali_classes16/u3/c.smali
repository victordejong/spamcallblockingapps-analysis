.class public interface abstract Lu3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu3/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu3/b;

    invoke-direct {v0}, Lu3/b;-><init>()V

    sput-object v0, Lu3/c;->a:Lu3/c;

    .line 2
    new-instance v0, Lu3/p0/d/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lu3/p0/d/b;-><init>(Lu3/t;I)V

    return-void
.end method


# virtual methods
.method public abstract a(Lu3/n0;Lu3/k0;)Lu3/g0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
