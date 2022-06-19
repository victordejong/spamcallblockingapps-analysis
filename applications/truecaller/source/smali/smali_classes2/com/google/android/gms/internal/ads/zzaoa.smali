.class public final Lcom/google/android/gms/internal/ads/zzaoa;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>(III)V
    .locals 3

    const/16 v0, 0x4e

    const-string v1, "Unhandled format: "

    const-string v2, " Hz, "

    .line 1
    invoke-static {v0, v1, p1, v2, p2}, Le/d/c/a/a;->z(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " channels in encoding "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
