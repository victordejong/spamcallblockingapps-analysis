.class public interface abstract Lm/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/z$a;,
        Lm/z$b;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lm/z$b;->a:Lm/z$b;

    return-void
.end method


# virtual methods
.method public abstract intercept(Lm/z$a;)Lm/g0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
